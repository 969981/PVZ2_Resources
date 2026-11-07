.class public Lgbsdk/androidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lgbsdk/androidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lgbsdk/androidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 68
    new-instance v0, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {v0}, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Lgbsdk/androidx/versionedparcelable/VersionedParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lgbsdk/androidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .line 48
    instance-of v0, p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    invoke-virtual {p0}, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parcel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toOutputStream(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .locals 2

    .line 58
    new-instance v0, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 59
    invoke-virtual {v0, p0}, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;)V

    .line 60
    invoke-virtual {v0}, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;->closeField()V

    return-void
.end method

.method public static toParcelable(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .locals 1

    .line 40
    new-instance v0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Lgbsdk/androidx/versionedparcelable/ParcelImpl;-><init>(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;)V

    return-object v0
.end method
