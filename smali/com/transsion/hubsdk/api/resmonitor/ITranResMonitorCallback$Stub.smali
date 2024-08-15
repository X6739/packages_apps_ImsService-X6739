.class public abstract Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;
.super Landroid/os/Binder;
.source "ITranResMonitorCallback.java"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

.field static final TRANSACTION_onEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .locals 1

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 113
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    if-nez v0, :cond_1

    .line 116
    if-eqz p0, :cond_0

    .line 117
    sput-object p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 60
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;->onEvent(ILjava/lang/String;)V

    .line 66
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
