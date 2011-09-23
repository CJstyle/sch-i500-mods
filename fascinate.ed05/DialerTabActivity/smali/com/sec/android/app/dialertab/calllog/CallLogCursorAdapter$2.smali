.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;
.super Ljava/lang/Object;
.source "CallLogCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 591
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 592
    .local v1, message_id:Ljava/lang/String;
    const-string v2, "MESSAGE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 595
    :cond_0
    return-void
.end method
