.class public Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;
.super Ljava/lang/Object;
.source "TranThubFontManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/typeface/ITranFontManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;


# instance fields
.field private final mTranContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mTranContext:Landroid/content/Context;

    .line 29
    const-string v0, "font"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    move-result-object v1

    sput-object v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    .line 31
    return-void
.end method

.method static synthetic lambda$bindFontManagerService$2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;->bindFontManagerService()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDefaultTypeface$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "fontPath"    # Ljava/lang/String;
    .param p1, "hashCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;->setDefaultTypeface(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDefaultTypefaceFromParcelFileDescriptor$1(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "fontFD"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "hashCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;->setDefaultTypefaceFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$unbindFontManagerService$3()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mService:Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/transsion/hubsdk/os/typeface/ITranFontManagerService;->unbindFontManagerService()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bindFontManagerService()Z
    .locals 4

    .line 59
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mTranContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    .local v0, "isBind":Z
    sget-object v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindFontManagerService isBind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0
.end method

.method public setDefaultTypeface(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mTranContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    .local v0, "result":I
    sget-object v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultTypeface result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0
.end method

.method public setDefaultTypefaceFromParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 4
    .param p1, "fontFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "hashCode"    # Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mTranContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    .local v0, "result":I
    sget-object v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultTypefaceFromParcelFileDescriptor result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v0
.end method

.method public unbindFontManagerService()V
    .locals 3

    .line 71
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager;->mTranContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/os/typeface/TranThubFontManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "font"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    return-void
.end method
