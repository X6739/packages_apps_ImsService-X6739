.class public interface abstract Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancarePrividerAdapter;
.super Ljava/lang/Object;
.source "ITranTrancarePrividerAdapter.java"


# virtual methods
.method public abstract deEncryptionString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encryptionString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastDataTime(Landroid/content/ContentResolver;JLjava/lang/String;)J
.end method

.method public abstract getLastDataTime(Landroid/content/ContentResolver;Ljava/lang/String;)J
.end method

.method public abstract initDataSheet(Landroid/content/ContentResolver;JLjava/lang/String;J)Landroid/net/Uri;
.end method

.method public abstract initDataSheet(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
.end method

.method public abstract insert(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract insert(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract insertCache(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract insertCache(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract isKeyGuardUnlocked(Landroid/content/Context;)Z
.end method

.method public abstract query(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract update(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract update(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
