.class Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$5;
.super Ljava/lang/Object;
.source "LogDetailDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    .line 351
    return-void
.end method
