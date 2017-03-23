//
// Created by Kim SAVAROCHE on 22/03/2017.
//

#ifndef NEURALNETWORKPROJECT_CLNEURALNETWORK_H
#define NEURALNETWORKPROJECT_CLNEURALNETWORK_H

#include <cassert>
#include "CLNeuron.h"

/**
 * CLNeuralNetwork
 *
 * The last neuron in a layer is the bias.
 */
class CLNeuralNetwork {
public:
    CLNeuralNetwork(vector<unsigned>& topology);

    void feedForward(const vector<double>& inputVals);
    void backPropagation(const vector<double> &targetVals);
    void getResults(vector<double>& resultsVals) const;
    double getRecentAverageError();
    void predict(const vector<double>& inputVals, vector<double>& resultsVals);

private:
    vector<CLNeuronLayer> layers; // layers[iLayer][iNeuron]
    double errorVal;
    double recentAverageError;
    double recentAverageSmoothingFactor;

    void measureError(const vector<double> &targetVals, CLNeuronLayer &outputLayer);
    void calculateRMS(const vector<double> &targetVals, CLNeuronLayer &outputLayer);
    void calculateRecentAverageError();
};


#endif //NEURALNETWORKPROJECT_CLNEURALNETWORK_H
