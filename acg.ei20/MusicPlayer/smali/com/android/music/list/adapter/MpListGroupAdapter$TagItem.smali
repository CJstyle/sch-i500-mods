.class Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
.super Ljava/lang/Object;
.source "MpListGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/adapter/MpListGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagItem"
.end annotation


# instance fields
.field check:Landroid/widget/CheckBox;

.field image:Landroid/widget/ImageView;

.field playing:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;


# direct methods
.method private constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->this$0:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/list/adapter/MpListGroupAdapter;Lcom/android/music/list/adapter/MpListGroupAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    return-void
.end method
