.class public abstract Lcom/transsion/appm/ITranAppmManager$Stub;
.super Landroid/os/Binder;
.source "ITranAppmManager.java"

# interfaces
.implements Lcom/transsion/appm/ITranAppmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/appm/ITranAppmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.appm.ITranAppmManager"

.field static final TRANSACTION_getPolicyVersion:I = 0x4

.field static final TRANSACTION_notifyClient:I = 0x5

.field static final TRANSACTION_registerAppmCallback:I = 0x2

.field static final TRANSACTION_sendEvent:I = 0x1

.field static final TRANSACTION_unregisterAppmCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.transsion.appm.ITranAppmManager"

    invoke-virtual {p0, p0, v0}, Lcom/transsion/appm/ITranAppmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/appm/ITranAppmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.transsion.appm.ITranAppmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/appm/ITranAppmManager;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/transsion/appm/ITranAppmManager;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/transsion/appm/ITranAppmManager;
    .locals 1

    .line 260
    sget-object v0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->sDefaultImpl:Lcom/transsion/appm/ITranAppmManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/appm/ITranAppmManager;)Z
    .locals 2
    .param p0, "impl"    # Lcom/transsion/appm/ITranAppmManager;

    .line 250
    sget-object v0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->sDefaultImpl:Lcom/transsion/appm/ITranAppmManager;

    if-nez v0, :cond_1

    .line 253
    if-eqz p0, :cond_0

    .line 254
    sput-object p0, Lcom/transsion/appm/ITranAppmManager$Stub$Proxy;->sDefaultImpl:Lcom/transsion/appm/ITranAppmManager;

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
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

    .line 61
    const-string v0, "com.transsion.appm.ITranAppmManager"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 110
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/transsion/appm/ITranAppmManager$Stub;->notifyClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v1

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/transsion/appm/ITranAppmManager$Stub;->getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 91
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/appm/ITranAppmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/appm/ITranAppmCallback;

    move-result-object v2

    .line 94
    .local v2, "_arg0":Lcom/transsion/appm/ITranAppmCallback;
    invoke-virtual {p0, v2}, Lcom/transsion/appm/ITranAppmManager$Stub;->unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    .line 82
    .end local v2    # "_arg0":Lcom/transsion/appm/ITranAppmCallback;
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/appm/ITranAppmCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/appm/ITranAppmCallback;

    move-result-object v2

    .line 85
    .restart local v2    # "_arg0":Lcom/transsion/appm/ITranAppmCallback;
    invoke-virtual {p0, v2}, Lcom/transsion/appm/ITranAppmManager$Stub;->registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v1

    .line 71
    .end local v2    # "_arg0":Lcom/transsion/appm/ITranAppmCallback;
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/transsion/appm/ITranAppmManager$Stub;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
