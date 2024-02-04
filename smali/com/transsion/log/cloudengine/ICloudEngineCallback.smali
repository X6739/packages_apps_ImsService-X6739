.class public interface abstract Lcom/transsion/log/cloudengine/ICloudEngineCallback;
.super Ljava/lang/Object;
.source "ICloudEngineCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/cloudengine/ICloudEngineCallback$Stub;,
        Lcom/transsion/log/cloudengine/ICloudEngineCallback$Default;
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
