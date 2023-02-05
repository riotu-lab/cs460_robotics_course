from setuptools import setup

package_name = 'ros2_essential_python'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='akoubaa',
    maintainer_email='anis.koubaa@gmail.com',
    description='This is a package to learn basics of ROS2',
    license='GNU License',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'hello_world = ros2_essential_python.hello_world:main',
            'talker= ros2_essential_python.talker:main',
            'listener= ros2_essential_python.listener:main'

        ],
    },
)
