.class public final Lgbsdk/android/support/v4/graphics/drawable/IconCompatParcelizer;
.super Lgbsdk/androidx/core/graphics/drawable/IconCompatParcelizer;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgbsdk/androidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Lgbsdk/androidx/versionedparcelable/VersionedParcel;)Lgbsdk/android/support/v4/graphics/drawable/IconCompat;
    .locals 0

    .line 12
    invoke-static {p0}, Lgbsdk/androidx/core/graphics/drawable/IconCompatParcelizer;->read(Lgbsdk/androidx/versionedparcelable/VersionedParcel;)Lgbsdk/android/support/v4/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static write(Lgbsdk/android/support/v4/graphics/drawable/IconCompat;Lgbsdk/androidx/versionedparcelable/VersionedParcel;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lgbsdk/androidx/core/graphics/drawable/IconCompatParcelizer;->write(Lgbsdk/android/support/v4/graphics/drawable/IconCompat;Lgbsdk/androidx/versionedparcelable/VersionedParcel;)V

    return-void
.end method
