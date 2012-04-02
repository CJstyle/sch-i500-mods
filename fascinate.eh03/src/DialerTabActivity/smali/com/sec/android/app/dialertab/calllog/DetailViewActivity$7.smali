.class Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;
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
    .line 785
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 788
    return-void
.end method
