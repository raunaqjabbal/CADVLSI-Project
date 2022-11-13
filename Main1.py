import pandas as pd
import numpy as np
from sklearn import metrics
import tensorflow as tf

def C():
    dataset = pd.read_csv("./ClassificationDataTrain.csv",header=None)
    X_train= dataset.iloc[:, 0:-1].values
    y_train = dataset.iloc[:, -1].values
    dataset = pd.read_csv("./ClassificationDataTest.csv",header=None)
    X_test = dataset.iloc[:, 0:-1].values
    y_test = dataset.iloc[:, -1].values    
    
    def create_model():
        model = tf.keras.models.Sequential()
        model.add(tf.keras.layers.Dense(units=15, activation='relu'))
        model.add(tf.keras.layers.Dense(units=30, activation='relu'))
        model.add(tf.keras.layers.Dense(units=1, activation='sigmoid'))
        model.compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = ['accuracy'])
        return model
    
    # model=create_model()
    # model.fit(X_train, y_train, epochs =500,verbose=0)
    # loss, acc = model.evaluate(X_test, y_test, verbose=0)
    # print("New model, accuracy: {:5.2f}%".format(100 * acc))
    # model.save_weights('./checkpoints/my_checkpoint')
    # y_pred=model.predict(X_test)
    # y_pred2=np.array(y_pred>0.5,dtype="int")
    # y_pred2=y_pred2.flatten()
    
    
    # #model.summary()
    model = create_model()
    model.load_weights('./checkpoints/my_checkpoint')
    y_pred=model.predict(X_test)
    y_pred2=np.array(y_pred>0.5,dtype="int")
    y_pred2=y_pred2.flatten()
    
    # print(model.layers[0].weights[0].shape)
    # print(model.layers[0].weights[1].shape)
    # print(model.layers[1].weights[0].shape)
    # print(model.layers[1].weights[1].shape)
    # print(model.layers[2].weights[0].shape)
    # print(model.layers[2].weights[1].shape)        
    
    # print(model.layers[0].weights[0])
    # print(model.layers[0].weights[1])
    # print(model.layers[1].weights[0])
    # print(model.layers[1].weights[1])
    # print(model.layers[2].weights[0])
    # print(model.layers[2].weights[1])        
    
    print("y_pred:",y_pred[0]) #[0.96707326]
    print("X_Test: ",X_test[0]) # [1.3538  1.2087  1.0842  1.1102  1.326   0.90461 0.87229]
    
    print("y_pred:",y_pred[1]) #[0.00064328]
    print("X_Test: ",X_test[1]) # [0.95566 0.93661 0.91783 1.0815  1.1369  1.1075  0.81786]
              
C()