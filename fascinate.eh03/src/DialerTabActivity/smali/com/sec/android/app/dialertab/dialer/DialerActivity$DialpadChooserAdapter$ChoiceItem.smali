.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "s"
    .parameter "b"
    .parameter "i"

    .prologue
    .line 4377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4378
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    .line 4379
    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    .line 4380
    iput p3, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 4381
    return-void
.end method
