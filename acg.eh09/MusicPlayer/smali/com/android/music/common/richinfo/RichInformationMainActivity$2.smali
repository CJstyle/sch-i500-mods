.class Lcom/android/music/common/richinfo/RichInformationMainActivity$2;
.super Ljava/lang/Object;
.source "RichInformationMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;->initializeControls()V
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
    .line 336
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$2;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->showDialog(I)V

    .line 339
    return-void
.end method
