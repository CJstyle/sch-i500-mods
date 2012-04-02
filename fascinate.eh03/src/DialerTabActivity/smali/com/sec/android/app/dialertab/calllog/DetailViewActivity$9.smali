.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;
.super Ljava/lang/Object;
.source "DetailViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->fillData(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 807
    return-void
.end method
