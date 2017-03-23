//
// Created by Kim SAVAROCHE on 23/03/2017.
//

#ifndef NEURALNETWORK_XOR_TRAININGDATA_H
#define NEURALNETWORK_XOR_TRAININGDATA_H

#include <vector>
#include <iostream>
#include <fstream>
#include <sstream>


using namespace std;

class TrainingData {
public:
    TrainingData(const string filename);

    void getTopology(vector<unsigned>& topologie);
    unsigned getNextInputs(vector<double>& inputVals);
    unsigned getTargetOutputs(vector<double>& targetOutputVals);

    bool isEof();

private:
    ifstream trainingDataFile;
};

void generateTrainingData();

#endif //NEURALNETWORK_XOR_TRAININGDATA_H
