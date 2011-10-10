.class Lcom/android/mms/ui/CMASViewerActivity$1;
.super Ljava/lang/Object;
.source "CMASViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASViewerActivity;->lockMessage(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASViewerActivity;

.field final synthetic val$lockUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASViewerActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->val$lockUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->this$0:Lcom/android/mms/ui/CMASViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->val$lockUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/CMASViewerActivity$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    return-void
.end method
