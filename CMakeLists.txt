cmake_minimum_required(VERSION 3.6)
project(NeuralNetwork_XOR)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp Training/TrainingData.cpp Training/TrainingData.h NeuralNetwork/CLNeuralNetwork.cpp NeuralNetwork/CLNeuralNetwork.h NeuralNetwork/CLNeuron.cpp NeuralNetwork/CLNeuron.h NeuralNetwork/CLNeuronConnection.h DemoTools.h)
add_executable(NeuralNetwork_XOR ${SOURCE_FILES})