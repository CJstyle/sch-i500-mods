.class Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$7;
.super Ljava/lang/Object;
.source "LogDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

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
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    .line 552
    return-void
.end method
