.class public interface abstract Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper;
.super Ljava/lang/Object;
.source "ITranAppmCallbackWrapper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Stub;,
        Lcom/transsion/hubsdk/api/appm/ITranAppmCallbackWrapper$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppmCallback(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
