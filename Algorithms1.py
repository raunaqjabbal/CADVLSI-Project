from matplotlib.cbook import to_filehandle
import numpy as np
from sklearn.metrics import r2_score
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import cross_val_score
from sklearn.preprocessing import PolynomialFeatures
from sklearn.preprocessing import LabelEncoder
from xgboost import XGBClassifier
from catboost import CatBoostClassifier
from sklearn.ensemble import AdaBoostClassifier
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.neighbors import KNeighborsClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.model_selection import GridSearchCV
from sklearn.cluster import KMeans
from sklearn import metrics
import matplotlib.pyplot as plt
from sklearn.model_selection import learning_curve
from scipy import special
import tensorflow as tf
tf.autograph.set_verbosity(1)



class Classification:
    #print(np.concatenate((y_pred.reshpipape(len(y_pred),1), self.y_test.reshape(len(self.y_test),1)),1))
    def __init__(self, X_train=None,y_train=None,X_test=None,y_test=None,Samples=50,SU=3,X_test_2=None,SNR=None):
        self.X_train=X_train
        self.y_train=y_train
        self.X_test=X_test
        self.y_test=y_test
        # sc= StandardScaler()
        # self.X_train = sc.fit_transform(self.X_train) 
        # self.X_test = sc.transform(self.X_test)
        self.X_combined = np.r_[self.X_train, self.X_test]
        self.y_combined = np.r_[self.y_train, self.y_test] 
        # self.y_train=self.y_train.reshape(-1)
        # df_train.info()
        
        
    def MLP(self):
        type='MLP'
        marker="$c$"
        ann = tf.keras.models.Sequential()

        ann.add(tf.keras.layers.Dense(units=7, activation='relu'))
        ann.add(tf.keras.layers.Dense(units=len(self.y_train), activation='relu'))
        ann.add(tf.keras.layers.Dense(units=1, activation='sigmoid'))
        ann.compile(optimizer = 'adam', loss = 'binary_crossentropy', metrics = ['accuracy'])
        ann.fit(self.X_train, self.y_train, epochs =500,verbose=0)
        y_pred2=ann.predict(self.X_test)
        y_pred2=y_pred2.flatten()
        fpr, tpr, _ = metrics.roc_curve(self.y_test,  y_pred2)
        auc = metrics.auc(fpr,tpr)
        return [fpr,tpr,auc,type,marker]
     
      
def plot_learning_curve(estimator,title,X,y,cv=10,n_jobs=-1,train_sizes=np.linspace(0.1, 1.0, 10)):
    y=y.reshape(-1)
    fig, axes = plt.subplots(3, 1, figsize=(10, 10))
    axes[0].set_title(title)
    axes[0].set_xlabel("Training examples")
    axes[0].set_ylabel("Score")

    train_sizes, train_scores, test_scores, fit_times, _ = learning_curve(estimator,X,y,cv=cv,n_jobs=n_jobs,train_sizes=train_sizes,return_times=True)
    train_scores_mean = np.mean(train_scores, axis=1)
    train_scores_std = np.std(train_scores, axis=1)
    test_scores_mean = np.mean(test_scores, axis=1)
    test_scores_std = np.std(test_scores, axis=1)
    fit_times_mean = np.mean(fit_times, axis=1)
    fit_times_std = np.std(fit_times, axis=1)

    axes[0].grid()
    axes[0].fill_between(train_sizes,train_scores_mean - train_scores_std,train_scores_mean + train_scores_std,alpha=0.1,color="r")
    axes[0].fill_between(train_sizes,test_scores_mean - test_scores_std,test_scores_mean + test_scores_std,alpha=0.1,color="g")
    axes[0].plot(train_sizes, train_scores_mean, "o-", color="r", label="Training score")
    axes[0].plot(train_sizes, test_scores_mean, "o-", color="g", label="Cross-validation score")
    axes[0].legend(loc="best")

    axes[1].grid()
    axes[1].plot(train_sizes, fit_times_mean, "o-")
    axes[1].fill_between(train_sizes,fit_times_mean - fit_times_std,fit_times_mean + fit_times_std,alpha=0.1,)
    axes[1].set_xlabel("Training examples")
    axes[1].set_ylabel("fit_times")
    axes[1].set_title("Scalability of the model")

    fit_time_argsort = fit_times_mean.argsort()
    fit_time_sorted = fit_times_mean[fit_time_argsort]
    test_scores_mean_sorted = test_scores_mean[fit_time_argsort]
    test_scores_std_sorted = test_scores_std[fit_time_argsort]
    axes[2].grid()
    axes[2].plot(fit_time_sorted, test_scores_mean_sorted, "o-")
    axes[2].fill_between(fit_time_sorted,test_scores_mean_sorted - test_scores_std_sorted,test_scores_mean_sorted + test_scores_std_sorted,alpha=0.1,)
    axes[2].set_xlabel("fit_times")
    axes[2].set_ylabel("Score")
    axes[2].set_title("Performance of the model")
    plt.subplots_adjust(left=0.1,bottom=0.1,right=0.9,top=0.9,wspace=0.4,hspace=0.4)
    plt.show()
    return plt