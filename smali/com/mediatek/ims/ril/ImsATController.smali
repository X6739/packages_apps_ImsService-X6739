.class public Lcom/mediatek/ims/ril/ImsATController;
.super Ljava/lang/Object;
.source "ImsATController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ril/ImsATController$MyHandler;
    }
.end annotation


# static fields
.field public static final ATD:Ljava/lang/String; = "AT+ATD"

.field public static final ATDE:Ljava/lang/String; = "ATDE"

.field public static final ATEIUSD:Ljava/lang/String; = "AT+EIUSD"

.field public static final ECPI:Ljava/lang/String; = "ECPI"

.field public static final ESIPCPI:Ljava/lang/String; = "ESIPCPI"

.field public static IMS_MAX_BUFFER:I = 0x0

.field private static final IMS_MODEM_EE_EVENT:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "ImsATController"

.field private static VDBG:Z

.field private static mTranTelephonyManagerEx:Lcom/transsion/telephony/TranTelephonyManagerEx;

.field private static sInstance:Lcom/mediatek/ims/ril/ImsATController;


# instance fields
.field private mMessageHandler:Landroid/os/Handler;

.field mModemEeImsATInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    .line 22
    const-string v0, "log.tag.modemeerelated"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ril/ImsATController;->VDBG:Z

    .line 28
    const/16 v0, 0x1e

    sput v0, Lcom/mediatek/ims/ril/ImsATController;->IMS_MAX_BUFFER:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    .line 33
    invoke-static {}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/ril/ImsATController;->mTranTelephonyManagerEx:Lcom/transsion/telephony/TranTelephonyManagerEx;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[ImsATController] ImsATControllerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v1, Lcom/mediatek/ims/ril/ImsATController$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/ril/ImsATController$MyHandler;-><init>(Lcom/mediatek/ims/ril/ImsATController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/ims/ril/ImsATController;->mMessageHandler:Landroid/os/Handler;

    .line 37
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsATController;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 38
    .local v1, "messenger":Landroid/os/Messenger;
    sget-object v2, Lcom/mediatek/ims/ril/ImsATController;->mTranTelephonyManagerEx:Lcom/transsion/telephony/TranTelephonyManagerEx;

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2, v1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->registerImsCallback(Landroid/os/Messenger;)V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/transsion/telephony/TranTelephonyManagerEx;
    .locals 1

    .line 18
    sget-object v0, Lcom/mediatek/ims/ril/ImsATController;->mTranTelephonyManagerEx:Lcom/transsion/telephony/TranTelephonyManagerEx;

    return-object v0
.end method

.method public static getCurrentTimeStamp()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/ril/ImsATController;
    .locals 1

    .line 54
    sget-object v0, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "getInstance null"

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsATController;->log(Ljava/lang/String;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    return-object v0
.end method

.method public static init()Lcom/mediatek/ims/ril/ImsATController;
    .locals 3

    .line 43
    const-class v0, Lcom/mediatek/ims/ril/ImsATController;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/mediatek/ims/ril/ImsATController;

    invoke-direct {v1}, Lcom/mediatek/ims/ril/ImsATController;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    .line 46
    const-string v1, "init() "

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsATController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsATController;->log(Ljava/lang/String;)V

    .line 50
    :goto_0
    sget-object v1, Lcom/mediatek/ims/ril/ImsATController;->sInstance:Lcom/mediatek/ims/ril/ImsATController;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 96
    sget-boolean v0, Lcom/mediatek/ims/ril/ImsATController;->VDBG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ImsATController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public setImsCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "imsCommand"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/mediatek/ims/ril/ImsATController;->IMS_MAX_BUFFER:I

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsATController;->mModemEeImsATInfoList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/ims/ril/ImsATController;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
