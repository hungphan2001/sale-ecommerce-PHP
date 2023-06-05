$(function () {
    const btnEditInfo = $('#btn-edit-info');
    const formInfoUser = $('#form-update-info-user');
    const avatarInput = $('#avatar-input');
    const btnRemoveAvatar = $('#btn-remove-avatar');

    btnEditInfo.on('click', function () {
        const isEdit = $(this).hasClass('btn-outline-warning')
        changeStyleBtnEdit(isEdit, $(this));
        addBtnUpdate(isEdit);
        showInputEdit(isEdit);
    });

    formInfoUser.on('submit', function (e) {
        e.preventDefault();
        let dataInsert = {};
        let url = this.action;
        $(this).serializeArray().forEach(data => dataInsert[data.name] = data.value);
        dataInsert['_method'] = 'PATCH';

        callAjax(url, dataInsert, 'POST')
            .done(function (res) {
                if(res.status === 200) {
                    showInputEdit(false, res.user)
                    changeStyleBtnEdit(false, $('#btn-edit-info'));
                    addBtnUpdate(false);
                    toastr.success(res.message);
                } else {
                    toastr.error(res.message);
                }
            })
            .fail(function (res) {
                toastr.error('có lỗi xảy ra!!');
            })
    })

    avatarInput.on('change', function () {
        const url = $(this).data('route');
        const formData = new FormData();
        formData.append('image', $(this).get(0).files[0])
        callAjaxWithFormData(url, formData)
            .done(function (res) {
                if(res.status == 200) {
                    toastr.success(res.message);
                    if(res.avatar) {
                        $('.avatar > .img > img').attr('src', res.avatar);
                    }
                } else {
                    toastr.error(res.message);
                }
            })
            .fail(function (res) {
                toastr.error('có lỗi xảy ra!!');
            })
    })

    btnRemoveAvatar.on('click', function () {
        if(confirm('Bạn có muốn xoá ảnh đại diện??')) {
            const url = $(this).data('route');
            callAjax(url, {}, 'POST')
                .done(function (res) {
                    if(res.status == 200) {
                        toastr.success(res.message);
                        $('.avatar > .img > img').attr('src', res.avatar);
                    } else {
                        toastr.error(res.message);
                    }
                })
        }
    })

});

function changeStyleBtnEdit(isEdit, btn) {
    if(isEdit) {
        btn.text('Huỷ');
        btn.removeClass('btn-outline-warning');
        btn.addClass('btn-outline-danger');
    } else {
        btn.text('Sửa');
        btn.removeClass('btn-outline-danger');
        btn.addClass('btn-outline-warning');
    }
}

function addBtnUpdate(isEdit) {
    if(isEdit) {
        $('.action-btn').prepend(
            `<button type="submit" class="btn btn-sm btn-primary btn-update">Cập nhật</button>
        `)
    } else {
        $('.action-btn').find('.btn-update').remove();
    }
}

function showInputEdit(isEdit, data = null) {
    let spanValue = $('.information-user  span.value');

    if(isEdit) {
        spanValue.each(function () {
            let value = $(this).text();
            let name = $(this).data('name');
            $(this).html(
                `<input class="form-control input-info" value="${value}" name="${name}">`
            )
        })
    } else {
        spanValue.each(function () {
            let value = '';
            if(data) {
                let name = $(this).data('name');
                value = data[name]
            } else {
                value = $(this).find('input').val();
            }
            $(this).html(value)
        })
    }
}
