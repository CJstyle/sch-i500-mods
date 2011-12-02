.class Lcom/android/music/common/util/DrmPopup$2;
.super Ljava/lang/Object;
.source "DrmPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/DrmPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/DrmPopup;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/DrmPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/music/common/util/DrmPopup$2;->this$0:Lcom/android/music/common/util/DrmPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/common/util/DrmPopup$2;->this$0:Lcom/android/music/common/util/DrmPopup;

    invoke-virtual {v0}, Lcom/android/music/common/util/DrmPopup;->finish()V

    .line 90
    return-void
.end method
