.class public interface abstract Lcom/transsion/hubsdk/interfaces/appm/ITranAppmServiceManagerAdapter;
.super Ljava/lang/Object;
.source "ITranAppmServiceManagerAdapter.java"


# virtual methods
.method public abstract getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyClient(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterAppmCallback(Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;)V
.end method
