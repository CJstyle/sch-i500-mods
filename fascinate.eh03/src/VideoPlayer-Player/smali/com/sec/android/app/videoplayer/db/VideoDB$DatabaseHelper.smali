.class Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/db/VideoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 95
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    #calls: Lcom/sec/android/app/videoplayer/db/VideoDB;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->access$000(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    #calls: Lcom/sec/android/app/videoplayer/db/VideoDB;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->access$000(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    return-void
.end method
