.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;
.super Ljava/lang/Object;
.source "TranTrancareProvider.java"


# static fields
.field private static final CONFIG_SHEET_DURATION:Ljava/lang/String; = "duration"

.field private static final CONFIG_SHEET_EMPTY_START_TIME:Ljava/lang/String; = "e_s_t"

.field private static final CONFIG_SHEET_ITEM_NAME:Ljava/lang/String; = "name"

.field private static final CONFIG_SHEET_NAME:Ljava/lang/String; = "trancare_config"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TRAN_INSERT_CACHE_FLAG:Ljava/lang/String; = "__cache"

.field private static final TRAN_LOG_BURIED_DATABASE:Ljava/lang/String; = "__buried"

.field private static final TRAN_LOG_DATACENTER_DATABASE:Ljava/lang/String; = "__datacenter"

.field public static final TRAN_LOG_DATA_PTS:Ljava/lang/String; = "__pts"

.field private static final TRAN_LOG_URI_ROOT:Ljava/lang/String; = "content://com.transsion.TrancareProvider/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->TAG:Ljava/lang/String;

    .line 319
    new-instance v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static cleanService()V
    .locals 1

    .line 316
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    .line 317
    return-void
.end method

.method public static encryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 292
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->encryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;

    .line 252
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 253
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 266
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 267
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    .locals 1

    .line 311
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    return-object v0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "duration"    # J

    .line 60
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v7

    .line 61
    .local v7, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v7, :cond_0

    .line 64
    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .line 74
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 75
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;

    .line 92
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v6

    .line 93
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v6, :cond_0

    .line 96
    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 109
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 110
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;

    .line 127
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v6

    .line 128
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v6, :cond_0

    .line 131
    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 144
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 145
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isKeyGuardUnlocked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 281
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->isKeyGuardUnlocked(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "where"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .param p7, "order"    # Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v9

    .line 169
    .local v9, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v9, :cond_0

    .line 172
    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v7

    .line 192
    .local v7, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v7, :cond_0

    .line 195
    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "tid"    # J
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "contentValues"    # Landroid/content/ContentValues;
    .param p5, "where"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v8

    .line 216
    .local v8, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v8, :cond_0

    .line 219
    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v6

    .line 239
    .local v6, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v6, :cond_0

    .line 242
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareProvider;->getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;

    move-result-object v0

    .line 303
    .local v0, "service":Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;->deEncryptionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "service is Null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
