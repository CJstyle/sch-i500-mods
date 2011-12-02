.class Lcom/android/music/list/adapter/MpListGroupAdapter$2;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

.field final synthetic val$tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;


# direct methods
.method constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$2;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    iput-object p2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$2;->val$tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$2;->val$tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;

    iget-object v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/music/list/adapter/MpListGroupAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$2$1;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method
