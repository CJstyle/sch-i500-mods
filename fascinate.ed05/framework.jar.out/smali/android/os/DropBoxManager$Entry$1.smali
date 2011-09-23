.class Landroid/os/DropBoxManager$Entry$1;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 177
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;ILandroid/os/DropBoxManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/DropBoxManager$Entry;
    .locals 1
    .parameter "size"

    .prologue
    .line 175
    new-array v0, p1, [Landroid/os/DropBoxManager$Entry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->newArray(I)[Landroid/os/DropBoxManager$Entry;

    move-result-object v0

    return-object v0
.end method
