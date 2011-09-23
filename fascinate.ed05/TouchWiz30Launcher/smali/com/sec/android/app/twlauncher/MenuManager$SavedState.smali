.class public Lcom/sec/android/app/twlauncher/MenuManager$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2009
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState$1;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/MenuManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1999
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1992
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;->currentScreen:I

    .line 2000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;->currentScreen:I

    .line 2001
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/app/twlauncher/MenuManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1991
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 1995
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1992
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;->currentScreen:I

    .line 1996
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 2005
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2006
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2007
    return-void
.end method
