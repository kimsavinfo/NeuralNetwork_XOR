//
// Created by Kim SAVAROCHE on 22/03/2017.
//

#include "CLNeuralNetwork.h"

#pragma mark Constructor

CLNeuralNetwork::CLNeuralNetwork(vector<unsigned>& topology) {
    unsigned numLayers = (unsigned int) topology.size();

    for (unsigned iLayer = 0; iLayer < numLayers; ++iLayer) {
        layers.push_back(CLNeuronLayer());
        unsigned numOutputs = iLayer == topology.size() - 1 ? 0 : topology[iLayer+1];

        // <!> Add a neuron in a layer for the bias.
        for (unsigned iNeuron = 0; iNeuron <= topology[iLayer]; ++iNeuron) {
            layers.back().push_back(CLNeuron(numOutputs, iNeuron));

            printf("Create a neuron : [%i][%i] \n", iLayer, iNeuron);
        }
    }
}


#pragma mark Back Propagation

void CLNeuralNetwork::backPropagation(const vector<double> &targetVals) {
    CLNeuronLayer& outputLayer = layers.back();

    measureError(targetVals, outputLayer);

    // Calculate output layer gradient
    for (unsigned iNeuron = 0; iNeuron < outputLayer.size() - 1; ++iNeuron) {
        outputLayer[iNeuron].calcOutputGradients( targetVals[iNeuron] );
    }

    // Calculate gradients on hidden layer
    for (unsigned iLayer = (unsigned int) (layers.size() - 2); iLayer > 2; --iLayer) {
        CLNeuronLayer & hiddenLayer = layers[iLayer];
        CLNeuronLayer & nextLayer = layers[iLayer + 1];

        for (unsigned n = 0; n < hiddenLayer.size(); ++n) {
            hiddenLayer[n].calcHiddenGradients(nextLayer);
        }
    }

    // For all layers from outputs to first hidden layer, update connection weights
    for (unsigned iLayer = (unsigned int) (layers.size() - 1); iLayer > 0; --iLayer) {
        CLNeuronLayer & layer = layers[iLayer];
        CLNeuronLayer & prevLayer = layers[iLayer - 1];

        for (unsigned n = 0; n < layer.size() - 1; ++n) {
            layer[n].updateInputWeights(prevLayer);
        }
    }
}


#pragma mark Root Mean Square error (network error)

void CLNeuralNetwork::measureError(const vector<double> &targetVals, CLNeuronLayer &outputLayer) {
    calculateRMS(targetVals, outputLayer);
    calculateRecentAverageError();
}

void CLNeuralNetwork::calculateRMS(const vector<double> &targetVals, CLNeuronLayer &outputLayer) {
    errorVal = 0.0;

    for (int n = 0; n < outputLayer.size() - 1; ++n) {
        double delta = targetVals[n] - outputLayer[n].getOutputVal();
        errorVal += delta * delta;
    }

    errorVal /= outputLayer.size() - 1;
    errorVal = sqrt(errorVal);
}

void CLNeuralNetwork::calculateRecentAverageError() {
    recentAverageError = (recentAverageError * recentAverageSmoothingFactor + errorVal) / (
            recentAverageSmoothingFactor + 1.0);
}


#pragma mark Feed Forward

void CLNeuralNetwork::feedForward(const vector<double>& inputVals) {
    assert(inputVals.size() == layers[0].size() - 1);

    // Assign (latch) input values into neuron input
    for (unsigned iNeuron = 0; iNeuron < inputVals.size(); ++iNeuron) {
        layers[0][iNeuron].setOutputVal(inputVals[iNeuron]);
    }

    // Forward propagate for layers
    for (unsigned iLayer = 1; iLayer < layers.size(); ++iLayer) {
        CLNeuronLayer & prevLayer = layers[iLayer - 1];

        for (unsigned iNeuron = 0; iNeuron < layers[iLayer].size() -1; ++iNeuron) {
            layers[iLayer][iNeuron].feedForward(prevLayer);
        }
    }


    // Put bias to 1.0
    layers.back().back().setOutputVal(1.0);
}

void CLNeuralNetwork::predict(const vector<double>& inputVals, vector<double>& resultsVals) {
    feedForward(inputVals);
    getResults(resultsVals);
}

#pragma mark Getter

void CLNeuralNetwork::getResults(vector<double>& resultsVals) const {
    resultsVals.clear();

    for (unsigned n = 0; n < layers.back().size() - 1; ++n) {
        resultsVals.push_back( layers.back()[n].getOutputVal() );
    }
}

double CLNeuralNetwork::getRecentAverageError() {
    return recentAverageError;
};