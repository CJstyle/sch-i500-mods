.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;
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
    .line 711
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    .line 716
    :cond_0
    return-void
.end method
