--
-- Volcado de datos para la tabla `ctg_tipo_usuario`
--
INSERT INTO
    `ctg_tipo_usuario` (
        `id_tipo_usuario`,
        `tipo_usuario`,
        `descripcion_usuario`
    )
VALUES
    (
        NULL,
        'Gerente',
        'El Gerente es un puesto de alto nivel dentro de la empresa. Tiene acceso a todas las funcionalidades de la aplicación web, lo que le permite supervisar y gestionar de manera integral todas las áreas de la empresa.'
    ),
    (
        NULL,
        'Administración',
        'El Administrativo es un puesto que desempeña tareas administrativas. Su función es garantizar un flujo eficiente de información y documentación relacionada con las operaciones comerciales y de recursos humanos de la empresa.'
    ),
    (
        NULL,
        'Director de Ventas',
        'El director de Ventas tiene acceso al módulo de facturación, en donde realiza el seguimiento a las actividades relacionadas con las ventas. Puede consultar el stock de productos y participar en la solicitud de compras.'
    ),
    (
        NULL,
        'Comercial',
        'El Comercial es un miembro del equipo de ventas, trabajan principalmente en el módulo de facturación y tienen la capacidad de consultar el stock de productos. Realizan las solicitudes al módulo de compras, estas deben ser aprobadas por el Gerente.'
    ),
    (
        NULL,
        'Jefe de Almacén',
        'El Jefe de Almacén se encarga de la operación y el flujo de productos dentro del almacén de la empresa. Tiene responsabilidades en el módulo almacén, como el control de stock, la gestión de ubicaciones de productos y solicitudes de compra.'
    ),
    (
        NULL,
        'Mozo de Almacén',
        'El Mozo de Almacén es un empleado que desempeña un papel esencial en la gestión diaria de las operaciones del almacén. Tienen tareas relacionadas con el control del stock y la gestión de ubicación de productos en el módulo almacén.'
    ),
    (
        NULL,
        'Mantenimiento ',
        'El personal de mantenimiento tiene acceso al módulo de almacén para consultar la ubicación de productos y registrar alguna incidencia.'
    );

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO
    `usuario` (
        `id_usuario`,
        `nom_ape_usuario`,
        `e_mail_usuario`,
        `username`,
        `password_usuario`,
        `fecha_registro`,
        `estado_usuario`,
        `id_tipo_usuario`
    )
VALUES
    (
        NULL,
        'Andrea Moreno Restrepo',
        'amorenor@gmail.com',
        'amorenor',
        'amorenor12345',
        '2023-11-28 20:24:06',
        'A',
        '1'
    ),
    (
        NULL,
        'Felipe Molano Jiménez ',
        'fmolanoj@gmail.com',
        'fmolanoj',
        'fmolanoj12345',
        '2023-11-28 20:24:06',
        'A',
        '2'
    ),
    (
        NULL,
        'Juan Sebatián Gómez Umaña',
        'jsgomezu@gmail.com',
        'jsgomezu',
        'jsgomezu12345',
        '2023-11-28 20:27:35',
        'A',
        '3'
    ),
    (
        NULL,
        'Laura Posada Tobon',
        'lposadat@gmail.com',
        'lposadat',
        'lposadat12345',
        '2023-11-28 20:28:34',
        'A',
        '4'
    ),
    (
        NULL,
        'Germán Garzón Pulgarín',
        'ggarzonp@gmail.com',
        'ggarzonp',
        'ggarzonp12345',
        '2023-11-28 20:29:28',
        'A',
        '5'
    ),
    (
        NULL,
        'Gustavo Hincapie Ruiz',
        'ghincapier@gmail.com',
        'ghincapier',
        'ghincapier12345',
        '2023-11-28 20:30:29',
        'A',
        '6'
    ),
    (
        NULL,
        'Santiago Montealegre Soto',
        'smontealegres@gmail.com',
        'smontealegres',
        'smontealegres12345',
        '2023-11-28 20:31:44',
        'A',
        '7'
    );