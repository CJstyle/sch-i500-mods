.class Lcom/android/mms/ui/SearchActivity$2$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$2$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/SearchActivity$2$1;

.field final synthetic val$rowid:J

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$2$1;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$2$1;

    iput-wide p2, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->val$threadId:J

    iput-wide p4, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->val$rowid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$2$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v1, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 320
    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$2$1;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "select_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->val$rowid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$2$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$2$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method
