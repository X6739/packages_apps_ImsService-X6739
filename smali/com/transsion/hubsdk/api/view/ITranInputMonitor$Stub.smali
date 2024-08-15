.class public abstract Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.super Landroid/os/Binder;
.source "ITranInputMonitor.java"

# interfaces
.implements Lcom/transsion/hubsdk/api/view/ITranInputMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.view.ITranInputMonitor"

.field static final TRANSACTION_dispose:I = 0x1

.field static final TRANSACTION_pilferPointers:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-virtual {p0, p0, v0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .locals 1

    .line 150
    sget-object v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/view/ITranInputMonitor;)Z
    .locals 2
    .param p0, "impl"    # Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    .line 140
    sget-object v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    if-nez v0, :cond_1

    .line 143
    if-eqz p0, :cond_0

    .line 144
    sput-object p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 70
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->pilferPointers()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v1

    .line 63
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;->dispose()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
