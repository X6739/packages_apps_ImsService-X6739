.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;
.super Ljava/lang/Object;
.source "TranThubTrancareProvider.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic lambda$deEncryptionString$14(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->deEncryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$encryptionString$13(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->encryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLastDataTime$10(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLastDataTime$11(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$initDataSheet$0(Landroid/content/ContentResolver;JLjava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$initDataSheet$1(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$insert$2(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$insert$3(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$insertCache$4(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$insertCache$5(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isKeyGuardUnlocked$12(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->isKeyGuardUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$query$6(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "where"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .param p7, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static/range {p0 .. p7}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$query$7(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$update$8(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;
    .param p5, "where"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static/range {p0 .. p6}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$update$9(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareProvider;->update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public encryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda2;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "ret":I
    int-to-long v1, v0

    return-wide v1
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "ret":I
    int-to-long v1, v0

    return-wide v1
.end method

.method public initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "duration"    # J

    .line 31
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;J)V

    const-string v1, "trancare"

    invoke-virtual {v0, v8, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 34
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 39
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda7;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 42
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda4;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 50
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .line 55
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda6;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 58
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;

    .line 63
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda10;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 66
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .line 71
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda8;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 74
    .local v0, "ret":Landroid/net/Uri;
    return-object v0
.end method

.method public isKeyGuardUnlocked(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda14;-><init>(Landroid/content/Context;)V

    const-string v2, "trancare"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 134
    .local v0, "ret":Z
    return v0
.end method

.method public query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "projection"    # [Ljava/lang/String;
    .param p6, "where"    # Ljava/lang/String;
    .param p7, "whereArgs"    # [Ljava/lang/String;
    .param p8, "order"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v10, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;

    move-object v1, v10

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v10, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 83
    .local v0, "ret":Landroid/database/Cursor;
    return-object v0
.end method

.method public query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "order"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v8, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda9;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda9;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v8, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 92
    .local v0, "ret":Landroid/database/Cursor;
    return-object v0
.end method

.method public update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;
    .param p6, "where"    # Ljava/lang/String;
    .param p7, "whereArgs"    # [Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v9, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda5;

    move-object v1, v9

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda5;-><init>(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v9, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "ret":I
    return v0
.end method

.method public update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v7, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda12;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "trancare"

    invoke-virtual {v0, v7, v1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, "ret":I
    return v0
.end method
