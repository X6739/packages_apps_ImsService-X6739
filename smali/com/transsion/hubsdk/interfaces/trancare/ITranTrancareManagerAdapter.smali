.class public interface abstract Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
.super Ljava/lang/Object;
.source "ITranTrancareManagerAdapter.java"


# virtual methods
.method public abstract appRequestInternal(I)V
.end method

.method public abstract feedBackInternal(Ljava/lang/String;Z)V
.end method

.method public abstract getAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Z
.end method

.method public abstract getAsBooleanDefInternal(Ljava/lang/String;Ljava/lang/String;ZZ)Z
.end method

.method public abstract getAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract getAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[J
.end method

.method public abstract getAsLongDefInternal(Ljava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method public abstract getAsLongInternal(Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method public abstract getAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method public abstract getAsStringDefInternal(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAsStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getConfigInternal(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigStaticInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultConfigInternal(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEnabledAsNameInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract getEnabledInternal(Ljava/lang/String;Z)Z
.end method

.method public abstract getFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isEnabledInternal(J)Z
.end method

.method public abstract putAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;[Z)V
.end method

.method public abstract putAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract putAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;[J)V
.end method

.method public abstract putAsLongInternal(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract putAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract putAsStringInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putConfigInternal(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract regCloudEngineCallbackInternal(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
.end method

.method public abstract regTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end method

.method public abstract serverLogInternal(ILjava/lang/String;)V
.end method

.method public abstract serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract serverLogInternal(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract serverLogInternal(JLjava/lang/String;)V
.end method

.method public abstract serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract serverLogInternal(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregCloudEngineCallbackInternal(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
.end method

.method public abstract unregTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
.end method
