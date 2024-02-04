.class public interface abstract Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;
.super Ljava/lang/Object;
.source "ITranCloudEngineCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;,
        Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
