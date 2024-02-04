.class public Lcom/transsion/log/TranLogCallback;
.super Lcom/transsion/log/ITranLogCallback$Stub;
.source "TranLogCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/transsion/log/ITranLogCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTidChange()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    return-void
.end method
