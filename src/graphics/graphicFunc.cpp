//
// Created by margot on 02.05.2020.
//


#include "graphics/graphic.h"
#include "physics/physics.h"

enum obstrectsCoord
{
    burstWidth = 124,
    burstHeight = 111,
    obstractX = 56,
    obstractY = 56,
    burstX = burstWidth/2,
    burstY = burstHeight/2,
};

enum carCoord{
    carX = carWidth/2,
    carY = 0,


};

enum id{
    roadId = 0,
    firstCarId = 1,
    lastCarId = 2,
    noId = -1,
    obstructionsId = 10,
    strike = 19,
};

enum index
{
    notFound = -1,
    up = 1,
    down = 0,
    left = 2,
    right = 3,
};

enum textSizes
{
    hpAndScoreSize = 30,
};

enum ids{
    countOfElements = 19,
};

constexpr pair<float, float> hpSize{screenWidth/28.24,screenHeight/21.95};
constexpr pair<float, float> scoreShapeSize {screenWidth/3.683, screenHeight/9.47};
constexpr pair<float, float> hpShapeSize {screenWidth/3.683, screenHeight/9.47};
constexpr pair<float, float> scoreShapePos{screenWidth/1.37, screenHeight/90.0};
constexpr pair<float, float> hpShapePos {0,screenHeight/90.0};
constexpr pair<float, float> scorePos {screenWidth/1.28, screenHeight/21.95};


/////////////////////                    CLOCK            //////////////////////////////////////////


int Clock::getClockSec() {
    return (int)clock_.getElapsedTime().asSeconds();
}


/////////////////////                    WINDOW            //////////////////////////////////////////

void Window::createRenderWindow(shared_ptr<Window> miniEngine, unsigned int width, unsigned int height, const std::string &title) {
    auto newWindow = std::make_shared<sf::RenderWindow>(sf::VideoMode(width, height), title, sf::Style::Default);
    miniEngine->renderWindow_= newWindow;
    miniEngine->setHeight(height);
    miniEngine->setWidth(width);

    auto newMusic = std::make_shared<sf::Music>();
    miniEngine->music = newMusic;

    miniEngine->music->openFromFile("src/sounds/RetroWave.ogg");
    miniEngine->music->setLoop(true);
    miniEngine->music->setVolume(50);
    miniEngine->music->play();
}

void Window::setWidth(unsigned int width) {
    width_ = width;
}

void Window::setHeight(unsigned int height) {
    height_ = height;
}

bool Window::isOpen() {
    return renderWindow_->isOpen();
}

void Window::handleEvents(std::vector<int> &actions) {
    sf::Event event{};
    while (renderWindow_->pollEvent(event)) {
        if (event.type == sf::Event::Closed) {
            actions.push_back(endOfTheGame);
            return;
        }
        else if (event.type == sf::Event::KeyPressed) {
            if (event.key.code == sf::Keyboard::Right)
                actions.push_back(myRight);
            if (event.key.code == sf::Keyboard::Left)
                actions.push_back(myLeft);
            if (event.key.code == sf::Keyboard::Up)
                actions.push_back(myUp);
            if (event.key.code == sf::Keyboard::Down)
                actions.push_back(myDown);
            if (event.key.code == sf::Keyboard::Escape)
                actions.push_back(pauseOfTheGame);
        }
        else break;
    }
}


void Window::createTextures()
{
    for (int id = 0; id <= countOfElements; id++)
    {
        sf::Texture tempTexture;
        std::vector<sf::Texture> tempVectorOfTextures;
        vector<std:: string> typeOfObstacle;
        if (id == roadId)
            typeOfObstacle.emplace_back("littleRoad");
        else if (id >=firstCarId && id <= lastCarId)
        {
            for (int i=0; i<4; i++) //numbers of cars conditions (left,up,right,down)
                typeOfObstacle.emplace_back("CarAction_" + toString(id)+toString(i));
        }
        else if (id >= obstructionsId){
            typeOfObstacle.emplace_back("obstruction" + toString(id));
        }

        for (auto & iter : typeOfObstacle)
        {
            tempTexture.loadFromFile("src/textures/" +iter +".png");
            tempVectorOfTextures.push_back(tempTexture);
        }
        mapOfRextures.insert(std::pair<int, std::vector<sf::Texture>>(id, tempVectorOfTextures));
    }
}

void Window::render(std::vector<shared_ptr<IGameElement>> &roadElements, int &actions, int &timeInGame, bool &isStrike) {
    renderWindow_->clear();

    sf::Font font;
    font.loadFromFile("src/fonts/fontForScore.ttf");
    sf::Text hp("Health: ", font, hpAndScoreSize);
    hp.setPosition(hpSize.first, hpSize.second);

    sf::Sprite carSprite;


    for (auto & roadElement : roadElements)
    {
        if (roadElement->getId() == roadId)
        {
            sf::Sprite roadSprite1(mapOfRextures.find(roadElements[0]->getId())->second[0]);
            sf::Sprite roadSprite2(mapOfRextures.find(roadElements[1]->getId())->second[0]);
            roadSprite1.setPosition(leftAngle, (float) roadElements[0]->getY());
            roadSprite2.setPosition(leftAngle, (float) roadElements[1]->getY());
            renderWindow_->draw(roadSprite1);
            renderWindow_->draw(roadSprite2);
        }
        else if (roadElement->getId() >= firstCarId && roadElement->getId() <= lastCarId)
        {
            short int index = notFound;
            if (actions != myNoAction)
            {
                if (actions == myUp)
                    index = up;
                else if (actions == myDown)
                    index = down;
                else if (actions == myLeft)
                    index = left;
                else if (actions == myRight)
                    index = right;

                if (index != notFound)
                    carSprite.setTexture(mapOfRextures.find(roadElement->getId())->second[index]);
            }
            else
                carSprite.setTexture(mapOfRextures.find(roadElement->getId())->second[0]);

            hp.setString("Health: " + toString(roadElement->getHealthCount()) + "%");
            carSprite.setOrigin(carX, carY);
            carSprite.setRotation((float) roadElement->getAngle());
            carSprite.setPosition(roadElement->getX(), roadElement->getY());
            renderWindow_->draw(carSprite);


        }
        else if (roadElement->getId() != noId) {
            sf::Sprite roadObstract(mapOfRextures.find(roadElement->getId())->second[0]);
            roadObstract.setPosition((float) roadElement->getX() - obstractX, (float) roadElement->getY() - obstractY);
            renderWindow_->draw(roadObstract);
        }
    }


    if (isStrike)
    {
        sf::Sprite burst(mapOfRextures.find(strike)->second[0]);
        burst.setOrigin(burstX, burstY);
        burst.setPosition(carSprite.getPosition().x - carSprite.getScale().x, carSprite.getPosition().y - carSprite.getScale().y);
        renderWindow_->draw(burst);
    }

    sf::RectangleShape scoreShape(sf::Vector2f(scoreShapeSize.first, scoreShapeSize.second));
    sf::RectangleShape hpShape(sf::Vector2f(hpShapeSize.first, hpShapeSize.second));
    scoreShape.move(scoreShapePos.first, scoreShapePos.second);
    hpShape.move(hpShapePos.first, hpShapePos.second);
    scoreShape.setFillColor(sf::Color(0,0,0,50));
    if (isStrike)
        hpShape.setFillColor(sf::Color(255,0,0,95));
    else
        hpShape.setFillColor(sf::Color(0,0,0,50));
    renderWindow_->draw(scoreShape);
    renderWindow_->draw(hpShape);
    renderWindow_->draw(hp);

    sf::Text score("", font, hpAndScoreSize);
    score.setFillColor(sf::Color::White);
    score.setString("Score: " + toString<int>(timeInGame));
    score.setPosition(scorePos.first, scorePos.second);


    renderWindow_->draw(score);
}

void Window::display() {
    renderWindow_->display();
}

void Window::close() {
    renderWindow_->close();
}

void Window::clear() {
    renderWindow_->clear();
}


bool Window::pollEvent(sf::Event& event) {
    renderWindow_->pollEvent(event);
    return true;
}

shared_ptr<sf::RenderWindow> Window::getRenderWindow() {
    return renderWindow_;
}


bool isContain(const shared_ptr<sf::RenderWindow>& window, const sf::Text& temp)
{
    return (temp.getGlobalBounds()).contains(sf::Mouse::getPosition(*window).x, sf::Mouse::getPosition(*window).y);
}

