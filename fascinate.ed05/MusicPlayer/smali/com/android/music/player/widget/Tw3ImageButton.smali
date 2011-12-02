.class public Lcom/android/music/player/widget/Tw3ImageButton;
.super Landroid/widget/ImageButton;
.source "Tw3ImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0x7f020103

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/Tw3ImageButton;->setBackgroundResource(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f020103

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/Tw3ImageButton;->setBackgroundResource(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, 0x7f020103

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/Tw3ImageButton;->setBackgroundResource(I)V

    .line 28
    return-void
.end method
