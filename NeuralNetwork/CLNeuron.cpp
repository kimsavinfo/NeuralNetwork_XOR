//
// Created by Kim SAVAROCHE on 22/03/2017.
//

#include "CLNeuron.h"

double CLNeuron::eta = 0.15;
double CLNeuron::alpha = 0.5;

#pragma mark Constructor

CLNeuron::CLNeuron(unsigned numOutputs, unsigned myIndex) {
    for (unsigned connection = 0; connection < numOutputs; ++connection) {
        outputWeights.push_back(CLNeuronConnection());
        outputWeights.back().weight = randomWeight();
    }

    neuronIndex = myIndex;
}

double CLNeuron::randomWeight() {
    return rand() / double(RAND_MAX);
}


#pragma mark Weights and Gradients

void CLNeuron::updateInputWeights(CLNeuronLayer& prevLayer) {
    if(prevLayer.size() > 0) {
        for (unsigned iNeuron = 0; iNeuron < prevLayer.size(); ++iNeuron) {
            CLNeuron & neuron = prevLayer[iNeuron];
            double oldDeltaWeight = neuron.outputWeights[neuronIndex].deltaWeight;

            double newDeltaWeight = eta * neuron.getOutputVal() * gradient
                                    + alpha * oldDeltaWeight;

            neuron.outputWeights[neuronIndex].deltaWeight = newDeltaWeight;
            neuron.outputWeights[neuronIndex].weight += newDeltaWeight;
        }
    }
}

double CLNeuron::sumDerivatedOfWeights(const CLNeuronLayer &nextLayer) const {
    double sums = 0.0;

    // Sum out contributions of the errors at the nodes we feed
    for (unsigned iNeuron = 0; iNeuron < nextLayer.size() - 1; ++iNeuron) {
        sums += outputWeights[iNeuron].weight * nextLayer[iNeuron].gradient;
    }

    return sums;
}

void CLNeuron::calcHiddenGradients(const CLNeuronLayer & nextLayer) {
    double dow = sumDerivatedOfWeights(nextLayer);
    gradient = dow * CLNeuron::transferFunctionDerivation(outputVal);
}

void CLNeuron::calcOutputGradients(double targetValue) {
    double delta = targetValue - outputVal;
    gradient = delta * CLNeuron::transferFunctionDerivation(outputVal);
}

double CLNeuron::transferFunctionDerivation(double x) {
    return 1 - x * x;
}


#pragma mark Feed Forward

void CLNeuron::feedForward(const CLNeuronLayer &prevLayer) {
    double sum = 0.0;

    for (unsigned iNeuron = 0; iNeuron < prevLayer.size() ; ++iNeuron) {
        sum += prevLayer[iNeuron].getOutputVal() * prevLayer[iNeuron].outputWeights[neuronIndex].weight;
    }

    outputVal = CLNeuron::transferFunction(sum);
}

/**
 * tanh - output range [-1.0, 1.0]
 * @param x
 * @return
 */
double CLNeuron::transferFunction(double x) {
    return tanh(x);
}

#pragma mark Getter Setter

void CLNeuron::setOutputVal(double val) {
    outputVal = val;
};

double CLNeuron::getOutputVal() const {
    return outputVal;
};
