.class public interface abstract Lcom/transsion/log/ITranLogCallback;
.super Ljava/lang/Object;
.source "ITranLogCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/log/ITranLogCallback$Stub;,
        Lcom/transsion/log/ITranLogCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onTidChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
