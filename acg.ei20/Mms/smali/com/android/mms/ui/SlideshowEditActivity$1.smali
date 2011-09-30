.class Lcom/android/mms/ui/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowEditActivity;->access$000(Lcom/android/mms/ui/SlideshowEditActivity;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-static {v0, p3}, Lcom/android/mms/ui/SlideshowEditActivity;->access$100(Lcom/android/mms/ui/SlideshowEditActivity;I)V

    goto :goto_0
.end method
