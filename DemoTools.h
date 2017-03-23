//
// Created by Kim SAVAROCHE on 23/03/2017.
//

#ifndef NEURALNETWORK_XOR_DEMOTOOLS_H
#define NEURALNETWORK_XOR_DEMOTOOLS_H

void showVectorVals(string label, vector<double>& v) {
    cout << label << " ";

    for (unsigned i = 0; i < v.size(); ++i) {
        cout << v[i] << " ";
    }

    cout << endl;
}

void showPrediction(CLNeuralNetwork &neuralNetwork, double number1, double number2) {
    vector<double> testInputs;
    vector<double> resultVals;

    testInputs.push_back(number1);
    testInputs.push_back(number2);

    neuralNetwork.predict(testInputs, resultVals);
    ostringstream title;
    title << "Prediction: " << number1 << " ^ " << number2 << " = ";
    showVectorVals(title.str(), resultVals);
}

void testPrediction(CLNeuralNetwork &neuralNetwork) {
    showPrediction(neuralNetwork, 0, 0);
    showPrediction(neuralNetwork, 0, 1);
    showPrediction(neuralNetwork, 1, 1);
    showPrediction(neuralNetwork, 1, 0);
}

#endif //NEURALNETWORK_XOR_DEMOTOOLS_H
