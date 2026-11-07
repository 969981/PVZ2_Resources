.class public Lgbsdk/androidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lgbsdk/androidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParcel:Lgbsdk/androidx/versionedparcelable/VersionedParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lgbsdk/androidx/versionedparcelable/ParcelImpl$1;

    invoke-direct {v0}, Lgbsdk/androidx/versionedparcelable/ParcelImpl$1;-><init>()V

    sput-object v0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {v0, p1}, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;->readVersionedParcelable()Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->mParcel:Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    return-void
.end method

.method public constructor <init>(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->mParcel:Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionedParcel()Lgbsdk/androidx/versionedparcelable/VersionedParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lgbsdk/androidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->mParcel:Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    new-instance p2, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;

    invoke-direct {p2, p1}, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;-><init>(Landroid/os/Parcel;)V

    .line 55
    iget-object p1, p0, Lgbsdk/androidx/versionedparcelable/ParcelImpl;->mParcel:Lgbsdk/androidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p2, p1}, Lgbsdk/androidx/versionedparcelable/VersionedParcelParcel;->writeVersionedParcelable(Lgbsdk/androidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method
