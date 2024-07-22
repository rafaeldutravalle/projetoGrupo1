document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('form');
    const campos = document.querySelectorAll('.required');
    const spans = document.querySelectorAll('.span-required');
    const emailRegex = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        nameValidate();
        emailValidate();
        mainTelefoneValidate();
        
        if (isFormValid()) {
            form.submit();
        }
    });

    function setError(index) {
        campos[index].style.border = '2px solid #e63636';
        spans[index].style.display = 'block';
    }

    function removeError(index) {
        campos[index].style.border = '';
        spans[index].style.display = 'none';
    }

    function nameValidate() {
        if (campos[0].value.length < 3) {
            setError(0);
        } else {
            removeError(0);
        }
    }

    function emailValidate() {
        if (!emailRegex.test(campos[1].value)) {
            setError(1);
        } else {
            removeError(1);
        }
    }

    function mainTelefoneValidate() {
        if (campos[2].value.length < 8) {
            setError(2);
        } else {
            removeError(2);
        }
    }

    function isFormValid() {
        for (let i = 0; i < spans.length; i++) {
            if (spans[i].style.display === 'block') {
                return false;
            }
        }
        return true;
    }
});
