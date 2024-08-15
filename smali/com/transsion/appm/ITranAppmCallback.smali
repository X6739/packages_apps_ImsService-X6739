.class public interface abstract Lcom/transsion/appm/ITranAppmCallback;
.super Ljava/lang/Object;
.source "ITranAppmCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/appm/ITranAppmCallback$Stub;,
        Lcom/transsion/appm/ITranAppmCallback$Default;
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
