.class public Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareProvider;
.super Ljava/lang/Object;
.source "TranAospTrancareProvider.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "duration"    # J

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public isKeyGuardUnlocked(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "projection"    # [Ljava/lang/String;
    .param p6, "where"    # Ljava/lang/String;
    .param p7, "whereArgs"    # [Ljava/lang/String;
    .param p8, "order"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .param p6, "order"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "tid"    # J
    .param p4, "event"    # Ljava/lang/String;
    .param p5, "contentValues"    # Landroid/content/ContentValues;
    .param p6, "where"    # Ljava/lang/String;
    .param p7, "whereArgs"    # [Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    return v0
.end method
