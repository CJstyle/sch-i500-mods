.class Lcom/android/music/common/richinfo/RichInformationMainActivity$4;
.super Ljava/lang/Object;
.source "RichInformationMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

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
    .line 799
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->dismissDialog(I)V

    .line 801
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$4;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v0, p3}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$200(Lcom/android/music/common/richinfo/RichInformationMainActivity;I)V

    .line 804
    return-void
.end method
