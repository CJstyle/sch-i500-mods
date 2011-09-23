.class Lcom/android/browser/BrowserBackupAgent$Bookmark;
.super Ljava/lang/Object;
.source "BrowserBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bookmark"
.end annotation


# instance fields
.field public created:J

.field public date:J

.field public folder:I

.field final synthetic this$0:Lcom/android/browser/BrowserBackupAgent;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public visits:I


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBackupAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->this$0:Lcom/android/browser/BrowserBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
