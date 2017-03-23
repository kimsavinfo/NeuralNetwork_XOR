#include <iostream>

#include "Training/TrainingData.h"
#include "NeuralNetwork/CLNeuralNetwork.h"
#include "DemoTools.h"

bool isDataSizeCorrect(TrainingData &trainingData, const vector<unsigned int> &topology,
                       vector<double> &inputVals) {
    return trainingData.getNextInputs(inputVals) == topology[0];
}

int main() {
    generateTrainingData();
    TrainingData trainingData("trainingData.txt");

    vector<unsigned> topology;
    trainingData.getTopology(topology);
    CLNeuralNetwork neuralNetwork(topology);

    vector<double> inputVals, targetVals, resultVals;
    int trainingPass = 0;

    while(!trainingData.isEof() && isDataSizeCorrect(trainingData, topology, inputVals) ) {
        ++trainingPass;
        cout << endl << "Pass: " << trainingPass;

        showVectorVals("\nInputs:", inputVals);
        neuralNetwork.feedForward(inputVals);

        neuralNetwork.getResults(resultVals);
        showVectorVals("Outputs:", resultVals);

        trainingData.getTargetOutputs(targetVals);
        showVectorVals("Targets:", targetVals);
        assert(targetVals.size() == topology.back());
        neuralNetwork.backPropagation(targetVals);

        cout << "Net recent average error: " << neuralNetwork.getRecentAverageError() << endl;
    }

    cout << "\n\n====> Training done \n\n";

    testPrediction(neuralNetwork);

    return 0;
}