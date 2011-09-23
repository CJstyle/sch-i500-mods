.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;
.super Ljava/lang/Object;
.source "DetailViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;
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
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->showDialog(I)V

    .line 421
    :cond_0
    return-void
.end method
