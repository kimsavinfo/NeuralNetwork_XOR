//
// Created by Kim SAVAROCHE on 22/03/2017.
//

#include "TrainingData.h"

#pragma mark Constructor

TrainingData::TrainingData(const string filename) {
    trainingDataFile.open(filename.c_str());
}

#pragma mark Getter

void TrainingData::getTopology(vector<unsigned>& topologie) {
    string line;
    string label;

    getline(trainingDataFile, line);
    stringstream ss(line);
    ss >> label;
    if(this->isEof() || label.compare("topology:") != 0) {
        abort();
    }

    while(!ss.eof()) {
        unsigned n;
        ss >> n;
        topologie.push_back(n);
    }

    return;
}


unsigned TrainingData::getNextInputs(vector<double>& inputVals) {
    inputVals.clear();

    string line;
    getline(trainingDataFile, line);
    stringstream ss(line);

    string label;
    ss >> label;

    if( label.compare("in:") == 0 ) {
        double oneValue;
        while(ss >> oneValue) {
            inputVals.push_back(oneValue);
        }
    }

    return (unsigned int) inputVals.size();
}

unsigned TrainingData::getTargetOutputs(vector<double>& targetOutputVals) {
    targetOutputVals.clear();

    string line;
    getline(trainingDataFile, line);
    stringstream ss(line);

    string label;
    ss >> label;
    if( label.compare("out:") == 0 ) {
        double oneValue;
        while(ss >> oneValue) {
            targetOutputVals.push_back(oneValue);
        }
    }

    return (unsigned int) targetOutputVals.size();
}

bool TrainingData::isEof() {
    return trainingDataFile.eof();
};

#pragma mark Generator

void generateTrainingData() {
    ofstream outputFile ("trainingData.txt");
    if (outputFile.is_open()) {
        outputFile << "topology: 2 4 1\n";
        const int modulo = 2;

        for (int iData = 2000; iData >= 0; --iData) {
            int trainingCase = rand() % 4;
            int number1 = 0;
            int number2 = 0;
            switch (trainingCase) {
                case 0:
                    number1 = 0;
                    number2 = 0;
                    break;
                case 1:
                    number1 = rand() % modulo;
                    number2 = 0;
                    break;
                case 2:
                    number1 = 0;
                    number2 = rand() % modulo;
                    break;
                case 3:
                    number1 = rand() % modulo;
                    number2 = rand() % modulo;
                    break;
                default:
                    break;
            }
            int result = number1 ^ number2;
            outputFile << "in: " << number1 << ".0 " << number2 << ".0\n";
            outputFile << "out: " << result << ".0\n";
        }

        outputFile.close();
    }  else {
        cout << "Unable to open file";
    }
}