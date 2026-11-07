.class public final Lgbsdk/androidx/versionedparcelable/ParcelImpl$1;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/androidx/versionedparcelable/ParcelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lgbsdk/androidx/versionedparcelable/ParcelImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lgbsdk/androidx/versionedparcelable/ParcelImpl;
    .locals 1

    .line 61
    new-instance v0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Lgbsdk/androidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lgbsdk/androidx/versionedparcelable/ParcelImpl$1;->createFromParcel(Landroid/os/Parcel;)Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lgbsdk/androidx/versionedparcelable/ParcelImpl;
    .locals 0

    .line 66
    new-array p1, p1, [Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lgbsdk/androidx/versionedparcelable/ParcelImpl$1;->newArray(I)[Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method
