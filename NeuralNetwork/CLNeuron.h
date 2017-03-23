//
// Created by Kim SAVAROCHE on 22/03/2017.
//

#ifndef NEURALNETWORKPROJECT_CLNEURON_H
#define NEURALNETWORKPROJECT_CLNEURON_H

#include <vector>
#include <math.h>
#include <stdlib.h>

#include "CLNeuronConnection.h"

using namespace std;

class CLNeuron;

typedef vector<CLNeuron> CLNeuronLayer;

/**
 * CLNeuron
 *
 * eta : [0.0 ; 1.0] net learning rate
 * alpha : [0.0 ; n] momentum, multiplier of last weight change
 */
class CLNeuron {
public:
    CLNeuron(unsigned numOutputs, unsigned myIndex);

    void feedForward(const CLNeuronLayer &prevLayer);
    void calcOutputGradients(double targetValue);
    void calcHiddenGradients(const CLNeuronLayer& nextLayer);
    void updateInputWeights(CLNeuronLayer& prevLayer);
    void setOutputVal(double val);
    double getOutputVal() const;

private:
    double outputVal;
    vector<CLNeuronConnection> outputWeights;
    unsigned neuronIndex;
    double gradient;
    static double eta;
    static double alpha;

    static double randomWeight();
    static double transferFunction(double x);
    static double transferFunctionDerivation(double x);
    double sumDerivatedOfWeights(const CLNeuronLayer &nextLayer) const;
};


#endif //NEURALNETWORKPROJECT_CLNEURON_H
