.class public interface abstract Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback;
.super Ljava/lang/Object;
.source "ITranTrancareCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Stub;,
        Lcom/transsion/hubsdk/api/trancare/ITranTrancareCallback$Default;
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
